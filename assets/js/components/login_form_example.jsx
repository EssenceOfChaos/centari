import React from "react";
import { Formik } from "formik";
import * as Yup from "yup";
import {
    Checkbox,
    Form,
    FormikDebug,
    Input,
    ResetButton,
    SubmitButton
} from "formik-semantic-ui-react";
import styled from "styled-components";

const Div = styled.div`
  max-width: 500px;
  width: 100%;
  padding: 20px;
`;

export const LoginForm = (props) => {
    const initialValues = {
        email: "a@a.com",
        password: "12345678",
        remember: false
    };

    const validationSchema = Yup.object({
        email: Yup.string().email("Invalid email address").required("Required"),
        password: Yup.string()
            .min(8, "Must be at least 8 characters")
            .required("Required"),
        remember: Yup.boolean().required("Required").oneOf([true], "Required")
    });

    return (
        <Div className={props.className}>
            <Formik
                initialValues={initialValues}
                validationSchema={validationSchema}
                onSubmit={(_, { setSubmitting }) => {
                    setTimeout(() => {
                        setSubmitting(false);
                    }, 1000);
                }}
            >
                <Form size="large">
                    <Input
                        id="input-email"
                        inputLabel="Email"
                        name="email"
                        icon="at"
                        iconPosition="right"
                        placeholder="Email"
                        focus
                        fluid
                        errorPrompt
                    />
                    <Input
                        id="input-password"
                        inputLabel={{ color: "purple", content: "Password" }}
                        name="password"
                        icon="key"
                        iconPosition="right"
                        type="password"
                        placeholder="Password"
                        autoComplete="on"
                        focus
                        fluid
                        errorPrompt
                    />
                    <Checkbox
                        id="checkbox-remember"
                        name="remember"
                        label="Remember ?"
                        errorPrompt={{ pointing: "left" }}
                    />
                    <SubmitButton fluid primary>
                        Login
                    </SubmitButton>
                    <ResetButton fluid color="green">
                        Reset
                    </ResetButton>
                    <FormikDebug />
                </Form>
            </Formik>
        </Div>
    );
};

